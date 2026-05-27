.class Lcom/agc/pref/ConfigLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$selectedIndex:[I


# direct methods
.method public constructor <init>(Lcom/agc/pref/ConfigLoader;[ILjava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/pref/ConfigLoader$1;->this$0:Lcom/agc/pref/ConfigLoader;

    iput-object p2, p0, Lcom/agc/pref/ConfigLoader$1;->val$selectedIndex:[I

    iput-object p3, p0, Lcom/agc/pref/ConfigLoader$1;->val$list:Ljava/util/List;

    iput-object p4, p0, Lcom/agc/pref/ConfigLoader$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$1;->val$selectedIndex:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/agc/pref/ConfigLoader$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$1;->this$0:Lcom/agc/pref/ConfigLoader;

    iget-object v0, p0, Lcom/agc/pref/ConfigLoader$1;->val$file:Ljava/io/File;

    iget-object v1, p0, Lcom/agc/pref/ConfigLoader$1;->val$list:Ljava/util/List;

    iget-object v2, p0, Lcom/agc/pref/ConfigLoader$1;->val$selectedIndex:[I

    aget p2, v2, p2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/agc/pref/ConfigLoader;->access$000(Lcom/agc/pref/ConfigLoader;Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
