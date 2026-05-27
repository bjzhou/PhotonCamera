.class Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener$1;->this$0:Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
