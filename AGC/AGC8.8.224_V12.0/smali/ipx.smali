.class public final Lipx;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipx;->a:Loiw;

    iput-object p2, p0, Lipx;->b:Loiw;

    iput-object p3, p0, Lipx;->c:Loiw;

    iput-object p4, p0, Lipx;->d:Loiw;

    iput-object p5, p0, Lipx;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lipw;
    .locals 7

    iget-object v0, p0, Lipx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lipx;->b:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v3

    iget-object v0, p0, Lipx;->c:Loiw;

    check-cast v0, Lipz;

    invoke-virtual {v0}, Lipz;->a()Ljde;

    move-result-object v4

    iget-object v0, p0, Lipx;->d:Loiw;

    check-cast v0, Lipy;

    invoke-virtual {v0}, Lipy;->a()Ljde;

    move-result-object v5

    iget-object v0, p0, Lipx;->e:Loiw;

    check-cast v0, Liqa;

    invoke-virtual {v0}, Liqa;->a()Ljde;

    move-result-object v6

    new-instance v0, Lipw;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lipw;-><init>(Ljava/util/concurrent/Executor;Lkaq;Ljde;Ljde;Ljde;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lipx;->a()Lipw;

    move-result-object v0

    return-object v0
.end method
