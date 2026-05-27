.class final Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/resource/gif/GifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GifState"
.end annotation


# instance fields
.field final frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/gif/GifFrameLoader;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;-><init>(Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
