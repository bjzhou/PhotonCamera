.class Lcom/agc/asv/AgcSeekbarDialog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/AgcSeekbarDialog$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/asv/AgcSeekbarDialog$1;


# direct methods
.method public constructor <init>(Lcom/agc/asv/AgcSeekbarDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$1$1;->this$1:Lcom/agc/asv/AgcSeekbarDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$1$1;->this$1:Lcom/agc/asv/AgcSeekbarDialog$1;

    iget-object v0, v0, Lcom/agc/asv/AgcSeekbarDialog$1;->this$0:Lcom/agc/asv/AgcSeekbarDialog;

    invoke-static {v0}, Lcom/agc/asv/AgcSeekbarDialog;->access$101(Lcom/agc/asv/AgcSeekbarDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
