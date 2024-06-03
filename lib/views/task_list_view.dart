import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/task_viewmodel.dart';
import '../models/task.dart';

class TaskListView extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: Consumer<TaskViewModel>(
        builder: (context, taskViewModel, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: taskViewModel.tasks.length,
                  itemBuilder: (context, index) {
                    final task = taskViewModel.tasks[index];
                    return ListTile(
                      title: Text(task.title),
                      subtitle: Text('${task.subject}: ${task.description}'),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Título'),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(labelText: 'Descrição'),
                    ),
                    TextField(
                      controller: _subjectController,
                      decoration: InputDecoration(labelText: 'Disciplina'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final task = Task(
                          title: _titleController.text,
                          description: _descriptionController.text,
                          subject: _subjectController.text,
                        );
                        Provider.of<TaskViewModel>(context, listen: false)
                            .addTask(task);
                        _titleController.clear();
                        _descriptionController.clear();
                        _subjectController.clear();
                      },
                      child: Text('Adicionar Tarefa'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
