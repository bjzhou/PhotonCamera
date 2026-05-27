.class public Lcom/gcam/simple/filechooser/ChooserDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcam/simple/filechooser/ChooserDialog$Result;
    }
.end annotation


# static fields
.field static directoryFilter:Ljava/io/FileFilter;

.field static hiddenFilter:Ljava/io/FileFilter;


# instance fields
.field private c:Ljava/util/List;

.field private d:Ljava/io/File;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/AlertDialog;

.field private fs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ListView;

.field private h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

.field private i:Z

.field private j:Ljava/io/FileFilter;

.field private k:Ljava/lang/String;

.field private mu:I

.field private title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gcam/simple/filechooser/ChooserDialog$1;

    invoke-direct {v0}, Lcom/gcam/simple/filechooser/ChooserDialog$1;-><init>()V

    sput-object v0, Lcom/gcam/simple/filechooser/ChooserDialog;->directoryFilter:Ljava/io/FileFilter;

    new-instance v0, Lcom/gcam/simple/filechooser/ChooserDialog$2;

    invoke-direct {v0}, Lcom/gcam/simple/filechooser/ChooserDialog$2;-><init>()V

    sput-object v0, Lcom/gcam/simple/filechooser/ChooserDialog;->hiddenFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    const/4 v0, 0x1

    iput v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->mu:I

    const-string v0, "Import Files"

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->title:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string v3, ".."

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    new-instance v1, Lcom/gcam/simple/filechooser/ChooserDialog$3;

    invoke-direct {v1, p0}, Lcom/gcam/simple/filechooser/ChooserDialog$3;-><init>(Lcom/gcam/simple/filechooser/ChooserDialog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic access$000(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->isDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->isHidden(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gcam/simple/filechooser/ChooserDialog;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/gcam/simple/filechooser/ChooserDialog;)Lcom/gcam/simple/filechooser/ChooserDialog$Result;
    .locals 0

    iget-object p0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/gcam/simple/filechooser/ChooserDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    return-object p0
.end method

.method private b()Lcom/gcam/simple/filechooser/internals/DirAdapter;
    .locals 7

    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->a()V

    new-instance v6, Lcom/gcam/simple/filechooser/internals/DirAdapter;

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    sget v3, Lcom/agc/Res$layout;->agc_chooser_dialog:I

    iget-object v4, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/gcam/simple/filechooser/internals/DirAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)V

    iget v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->mu:I

    invoke-virtual {v6, v0}, Lcom/gcam/simple/filechooser/internals/DirAdapter;->setMultiple(I)V

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object v6
.end method

.method private static isDirectory(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method private static isHidden(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private multipleMode()Z
    .locals 2

    iget v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->mu:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public build()Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 3

    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->b()Lcom/gcam/simple/filechooser/internals/DirAdapter;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gcam/simple/filechooser/ChooserDialog$4;

    invoke-direct {v0, p0}, Lcom/gcam/simple/filechooser/ChooserDialog$4;-><init>(Lcom/gcam/simple/filechooser/ChooserDialog;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->multipleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/gcam/simple/filechooser/ChooserDialog$5;

    invoke-direct {v0, p0}, Lcom/gcam/simple/filechooser/ChooserDialog$5;-><init>(Lcom/gcam/simple/filechooser/ChooserDialog;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_5

    iget-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_5

    iget-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, ".."

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    iput-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->multipleMode()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget p4, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->mu:I

    if-ge p3, p4, :cond_2

    iget-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->fs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/gcam/simple/filechooser/internals/DirAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/gcam/simple/filechooser/ChooserDialog$Result;->onChoosePath(Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/gcam/simple/filechooser/ChooserDialog;->b()Lcom/gcam/simple/filechooser/internals/DirAdapter;

    :cond_5
    return-void
.end method

.method public show()Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 2

    iget-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "call build() before show()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public with(Landroid/content/Context;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public withChosenListener(Lcom/gcam/simple/filechooser/ChooserDialog$Result;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->h:Lcom/gcam/simple/filechooser/ChooserDialog$Result;

    return-object p0
.end method

.method public withDateFormat()Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p0, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withDateFormat(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->k:Ljava/lang/String;

    return-object p0
.end method

.method public withFilter(Ljava/io/FileFilter;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withFilter(ZZLjava/io/FileFilter;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    iput-object p3, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/gcam/simple/filechooser/ChooserDialog;->directoryFilter:Ljava/io/FileFilter;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/gcam/simple/filechooser/ChooserDialog;->hiddenFilter:Ljava/io/FileFilter;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;

    invoke-direct {v0, p1, p2, p3}, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;-><init>(ZZ[Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withFilter(Z[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/gcam/simple/filechooser/ChooserDialog;->withFilter(ZZ[Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;

    move-result-object p1

    return-object p1
.end method

.method public withFilterRegex(ZZLjava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 2

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    new-instance v0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;-><init>(ZZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withFilterRegex(ZZLjava/lang/String;I)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->i:Z

    new-instance v0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;-><init>(ZZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->j:Ljava/io/FileFilter;

    return-object p0
.end method

.method public withMultipleCount(I)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->mu:I

    :cond_0
    return-object p0
.end method

.method public withResources(III)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    return-object p0
.end method

.method public withStartFile(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    :goto_0
    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->d:Ljava/io/File;

    :cond_1
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/gcam/simple/filechooser/ChooserDialog;
    .locals 0

    iput-object p1, p0, Lcom/gcam/simple/filechooser/ChooserDialog;->title:Ljava/lang/String;

    return-object p0
.end method
