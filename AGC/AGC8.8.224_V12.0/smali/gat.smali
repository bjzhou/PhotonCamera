.class public final Lgat;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgat;->a:Loiw;

    iput-object p2, p0, Lgat;->b:Loiw;

    iput-object p3, p0, Lgat;->c:Loiw;

    iput-object p4, p0, Lgat;->d:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;)Lgat;
    .locals 1

    new-instance v0, Lgat;

    invoke-direct {v0, p0, p1, p2, p3}, Lgat;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lgam;
    .locals 6

    iget-object v0, p0, Lgat;->a:Loiw;

    check-cast v0, Ldjw;

    invoke-virtual {v0}, Ldjw;->a()Lkap;

    move-result-object v0

    iget-object v1, p0, Lgat;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuf;

    iget-object v2, p0, Lgat;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgam;

    iget-object v3, p0, Lgat;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljvk;

    invoke-interface {v2}, Lgam;->b()Ljvs;

    move-result-object v4

    invoke-static {v4, v3}, Ljvw;->l(Ljvs;Lkai;)Lkad;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljuf;->d(Lkad;)V

    invoke-interface {v2}, Lgam;->b()Ljvs;

    move-result-object v4

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfwn;

    invoke-virtual {v3, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    const-string v3, "ImgCptrCmdReady"

    invoke-interface {v0, v3}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object v0

    invoke-interface {v2}, Lgam;->a()Ljvs;

    move-result-object v3

    new-instance v4, Lecf;

    const/16 v5, 0xb

    invoke-direct {v4, v0, v2, v5}, Lecf;-><init>(Lkaq;Lgam;I)V

    invoke-static {v3, v4}, Ljvw;->l(Ljvs;Lkai;)Lkad;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgat;->a()Lgam;

    move-result-object v0

    return-object v0
.end method
