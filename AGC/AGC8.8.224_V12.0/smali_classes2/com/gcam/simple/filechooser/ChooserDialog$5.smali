.class Lcom/gcam/simple/filechooser/ChooserDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gcam/simple/filechooser/ChooserDialog;->build()Lcom/gcam/simple/filechooser/ChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcam/simple/filechooser/ChooserDialog;


# direct methods
.method public constructor <init>(Lcom/gcam/simple/filechooser/ChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog$5;->this$0:Lcom/gcam/simple/filechooser/ChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/gcam/simple/filechooser/ChooserDialog;->access$300(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog$5;->this$0:Lcom/gcam/simple/filechooser/ChooserDialog;

    invoke-static {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->access$400(Lcom/gcam/simple/filechooser/ChooserDialog;)Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog$5;->this$0:Lcom/gcam/simple/filechooser/ChooserDialog;

    invoke-static {p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->access$400(Lcom/gcam/simple/filechooser/ChooserDialog;)Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    move-result-object p1

    iget-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog$5;->this$0:Lcom/gcam/simple/filechooser/ChooserDialog;

    invoke-static {p2}, Lcom/gcam/simple/filechooser/ChooserDialog;->access$500(Lcom/gcam/simple/filechooser/ChooserDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gcam/simple/filechooser/ChooserDialog$Result;->onChoosePathList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
