.class Lcom/agc/widget/PatchButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/PatchButton;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/PatchButton;


# direct methods
.method public constructor <init>(Lcom/agc/widget/PatchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/PatchButton$1;->this$0:Lcom/agc/widget/PatchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/PatchButton$1;->this$0:Lcom/agc/widget/PatchButton;

    invoke-virtual {v0}, Lcom/agc/widget/OptionButton;->onClick()V

    return-void
.end method
