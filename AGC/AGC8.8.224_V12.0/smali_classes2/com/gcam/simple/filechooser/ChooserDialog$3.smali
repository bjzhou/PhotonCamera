.class Lcom/gcam/simple/filechooser/ChooserDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gcam/simple/filechooser/ChooserDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcam/simple/filechooser/ChooserDialog;


# direct methods
.method public constructor <init>(Lcom/gcam/simple/filechooser/ChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog$3;->this$0:Lcom/gcam/simple/filechooser/ChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/gcam/simple/filechooser/ChooserDialog;->access$200(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
