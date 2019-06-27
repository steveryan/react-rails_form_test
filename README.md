# README

This is a very simple app that was created to familiarize myself with various ways of integrating react (via the react-rails gem) with a rails app(specifically around the creation of new db objects). I have created 3 "new" forms, 1 rails only form, one react form, and one hybrid form.

The rails only form uses a standard rails form to create a simple object with a title, and content.

The react form uses a single react component that creates a title field, a content field, and a Create Post button. On submit the form just POSTs to /react_posts. [(ReactForm.js)](app/javascript/components/ReactForm.js).

The hybrid form uses a standard rails form, like in the rails only form, but the title field is created and managed by a react component [(TitleFormOnly.js)](app/javascript/components/TitleFormOnly.js).
