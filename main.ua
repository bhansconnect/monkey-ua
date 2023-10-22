Src ← $ "Hello,# World!" # " This is in a comment
      $ This is a second line " start quote
      $ Still quote, # not comment
      $ ending quote"

# Src -> Comment Mask escluding newlines
Comments ← =2⊙;∧⋄⋄~(⊃⊂⋅∘ ⊙(◿3+1⊗∶"\"#"|≠@"|×2≠@\n))[] 0

# Src Comments -> Quote data mask (excludes actual quote characters)
# Note: ignores all escape characters like original monkey lang.
Quotes ← (
  ×⊙¬=@"
  ⍤"Unclosed quote consuming end of file"¬◿2/+.
  <\≠.
)

⊃Quotes⋅∘ ⊃∘Comments Src
