class Ml
  def self.predict(features)
    # "education",
    # "hours-per-week",
    # "capital-gain",
    # "male",
    classes = ["<= 50K", "> 50K"]
    predicted = Ml::IncomeClassifierModel.predict(features)
    classes[predicted]
  end

  def self.classify(submission)
    submission.classified_as = predict([
      submission.education,
      submission.hours_per_week,
      submission.capital_gain,
      submission.male ? 1 : 0
    ])
  end
end
