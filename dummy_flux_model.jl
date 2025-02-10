using Flux, Images, FileIO


img_path = "C:\Users\Rahul\Downloads\preprocessed_images.zip\preprocessed_images/image_1.png"  
img = load(img_path)


img = imresize(img, (224, 224))  
img = Float32.(channelview(img))  

img = reshape(img, 224*224*3, 1)  

model = Chain(
    Dense(224*224*3, 128, relu), 
    Dense(128, 64, relu),         
    Dense(64, 10),                
    softmax                        
)


output = model(img)


println("Model Output: ", output)
