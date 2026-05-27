.class Lcom/agc/widget/RotSeek$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/RotSeek;->checkifCurrentValueHasChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/RotSeek;


# direct methods
.method public constructor <init>(Lcom/agc/widget/RotSeek;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/RotSeek$1;->this$0:Lcom/agc/widget/RotSeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/RotSeek$1;->this$0:Lcom/agc/widget/RotSeek;

    invoke-static {v0}, Lcom/agc/widget/RotSeek;->access$100(Lcom/agc/widget/RotSeek;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/RotSeek$1;->this$0:Lcom/agc/widget/RotSeek;

    invoke-static {v1}, Lcom/agc/widget/RotSeek;->access$000(Lcom/agc/widget/RotSeek;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
