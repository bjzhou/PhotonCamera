.class Lcom/agc/pref/ConfigLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/pref/ConfigLoader;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/pref/ConfigLoader;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$selectedIndex:[I


# direct methods
.method public constructor <init>(Lcom/agc/pref/ConfigLoader;[ILjava/util/List;Ljava/io/File;Landroid/widget/ArrayAdapter;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/pref/ConfigLoader$3;->this$0:Lcom/agc/pref/ConfigLoader;

    iput-object p2, p0, Lcom/agc/pref/ConfigLoader$3;->val$selectedIndex:[I

    iput-object p3, p0, Lcom/agc/pref/ConfigLoader$3;->val$list:Ljava/util/List;

    iput-object p4, p0, Lcom/agc/pref/ConfigLoader$3;->val$file:Ljava/io/File;

    iput-object p5, p0, Lcom/agc/pref/ConfigLoader$3;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    iput-object p6, p0, Lcom/agc/pref/ConfigLoader$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$3;->val$selectedIndex:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/agc/pref/ConfigLoader$3;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$3;->this$0:Lcom/agc/pref/ConfigLoader;

    iget-object v1, p0, Lcom/agc/pref/ConfigLoader$3;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/agc/pref/ConfigLoader$3;->val$list:Ljava/util/List;

    iget-object v3, p0, Lcom/agc/pref/ConfigLoader$3;->val$selectedIndex:[I

    aget v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/agc/pref/ConfigLoader;->access$100(Lcom/agc/pref/ConfigLoader;Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$3;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/agc/pref/ConfigLoader$3;->val$selectedIndex:[I

    aget v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$3;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v0, p0, Lcom/agc/pref/ConfigLoader$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/agc/pref/ConfigLoader$3;->this$0:Lcom/agc/pref/ConfigLoader;

    iget-object v0, v0, Lcom/agc/pref/ConfigLoader;->context:Landroid/content/Context;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v0, v1}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/agc/pref/ConfigLoader$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/agc/pref/ConfigLoader$3;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method
