import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:orange_dc/blocs/note/note_cubit.dart';
import 'package:orange_dc/config/app_colors.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/empty_note.dart';
import '../../widgets/note_card.dart';
import '06_add_note_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context.read<NoteCubit>().addNote();
    return SafeArea(
        child: Scaffold(
          body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: CustomAppbar(title: 'My Notes'),
              ),
              SizedBox(height: 20,),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 700,
                child: BlocConsumer<NoteCubit, NoteState>(

                    listener: (context , state){
                      if(state == NoteInitial) {
                        print('I am in NoteInitial');
                      }
                    },
                    builder: (context , state){
                      if(state is NoteIsEmpty)
                        return EmptyNote();
                      else {
                        return FutureBuilder(
                          future: context.read<NoteCubit>().getNotes(),
                          builder:(context,snapshot){
                            if(snapshot.hasData) {
                              return ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  child: FadeInAnimation(
                                    duration: Duration(milliseconds: 500),
                                    child: SlideAnimation(
                                      duration: Duration(milliseconds: 500),
                                      child: Slidable(
                                          endActionPane: ActionPane(
                                            motion: const StretchMotion(),
                                            children: [
                                              SlidableAction(
                                                onPressed: (context) {
                                                  context
                                                      .read<NoteCubit>()
                                                      .removeNote(snapshot
                                                          .data![index]["id"]);
                                                },
                                                icon: Icons.delete,
                                                backgroundColor:
                                                    CustomTheme.getInstance(context)
                                                        .secondaryColor(),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                padding: const EdgeInsets.all(50),
                                                spacing: 50,
                                              ),
                                            ],
                                          ),
                                          child: NoteCard(
                                            title: snapshot.data![index]["title"],
                                            body: snapshot.data![index]["body"],
                                            creationTime: snapshot.data![index]
                                                ["creationTime"],
                                            id: snapshot.data![index]["id"],
                                          )),
                                    ),
                                  ),
                                );
                              });
                            }else{
                              return SizedBox();
                            }
                          }
                        );
                      }
                    },

                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddNoteScreen()));
            },
            child: Icon(Icons.add,),
            backgroundColor: Colors.deepOrange,
          ),
        )
    );
  }
}
