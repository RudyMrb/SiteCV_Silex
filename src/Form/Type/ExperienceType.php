<?php

namespace MicroCMS\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
// use Symfony\Component\Form\Extension\Core\Type\DateIntervalType;
// ...

class ExperienceType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder
      ->add('contrat', ChoiceType::class, array(
        'choices'  => array(
          'CDI' => 'CDI',
          'CDD' => 'CDD',
          'Contrat' => 'Contrat',
          'Stage' => 'Stage',
          'Benevolat' => 'Benevolat',
        ),
        'attr' => array('class' => 'col-md-12')
      ))
      ->add('debut', TextType::class, array(
          'attr' => array('class' => 'col-md-12')
        ))
      ->add('fin', TextType::class, array(
          'attr' => array('class' => 'col-md-12')
        ))
      ->add('poste', TextType::class, array(
          'attr' => array('class' => 'col-md-12')
        ))
      ->add('content', TextareaType::class, array(
          'attr' => array('class' => 'col-md-12'),
        ))
      ->add('img', TextType::class);
  }

  public function getName()
  {
      return 'experience';
  }
}
