class Student < ApplicationRecord
	has_many :capstones
	has_many :educations
	has_many :experiences
	has_many :skills

	
  def as_json
    {
      id: id,
      firstName: first_name,
      lastName: last_name,
      email: email,
      phoneNumber: phone_number,
      bio: bio,
      linkedinUrl: linkedin_url,
      twitterHandle: twitter_handle,
      websiteUrl: website_url,
      resumeUrl: resume_url,
      githubUrl: github_url,
      photo: photo,
      educations: educations.as_json,
      skills: skills.as_json,
      experiences: experiences.as_json,
      capstones:  capstones.as_json
    }
  end
end
