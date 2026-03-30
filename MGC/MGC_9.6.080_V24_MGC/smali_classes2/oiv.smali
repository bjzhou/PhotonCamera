.class public final Loiv;
.super Landroid/app/Fragment;
.source "PG"

# interfaces
.implements Loiu;


# static fields
.field public static final a:Ljava/util/WeakHashMap;


# instance fields
.field private final b:Loiw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sput-object v0, Loiv;->a:Ljava/util/WeakHashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance v0, Loiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Loiw;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Loiv;->getActivity()Landroid/app/Activity;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b(Loit;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Loiw;->h(Loit;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final c(Ljava/lang/Class;)Loit;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Loiw;->j(Ljava/lang/Class;)Loit;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Loiw;->i()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Loiw;->a(IILandroid/content/Intent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Loiw;->b(Landroid/os/Bundle;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Loiw;->c()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onResume()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Loiw;->d()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Loiw;->e(Landroid/os/Bundle;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onStart()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Loiw;->f()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final onStop()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Loiv;->b:Loiw;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Loiw;->g()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
