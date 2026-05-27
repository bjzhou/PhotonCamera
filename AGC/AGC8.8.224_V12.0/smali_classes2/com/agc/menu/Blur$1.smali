.class Lcom/agc/menu/Blur$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/Blur;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/menu/Blur;


# direct methods
.method public constructor <init>(Lcom/agc/menu/Blur;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/Blur$1;->this$0:Lcom/agc/menu/Blur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/agc/menu/Blur$1;->this$0:Lcom/agc/menu/Blur;

    invoke-static {v0}, Lcom/agc/menu/Blur;->access$000(Lcom/agc/menu/Blur;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/menu/Blur$1;->this$0:Lcom/agc/menu/Blur;

    invoke-static {v2}, Lcom/agc/menu/Blur;->access$100(Lcom/agc/menu/Blur;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/menu/Blur$1;->this$0:Lcom/agc/menu/Blur;

    invoke-static {v3}, Lcom/agc/menu/Blur;->access$200(Lcom/agc/menu/Blur;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/agc/menu/Blur;->access$300(Lcom/agc/menu/Blur;Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/agc/menu/Blur$1$1;

    invoke-direct {v2, p0, v0}, Lcom/agc/menu/Blur$1$1;-><init>(Lcom/agc/menu/Blur$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
