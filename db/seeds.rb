# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create({
  email: 'admin',
  password: 'qwer' })

about = AboutSection.create({
  user: user,
  title: 'About Us',
  description: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to' })

history = History.create({
  title: 'History',
  description: 'asdasd asd asd asdas dasd',
  about_section: about })

why = WhyU.create({
    title: 'Why Us',
    description: 'asdasd asd asd asdas dasd',
    about_section: about })

award = Award.create({
  title: "award 1",
  description: "details here",
  about_section: about
  })

productSec = ProductSection.create({
  user: user,
  title: 'Products',
  description: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to' })

chefSection = ChefSection.create({
  user: user,
  title: 'Chef',
  description: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to' })

newsSec = NewsSection.create({
  user: user,
  title: 'News',
  description: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to' })

contact = Contact.create({
  user: user,
  title: 'Get in touch with us',
  description: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as op' })
