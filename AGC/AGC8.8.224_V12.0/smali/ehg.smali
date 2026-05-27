.class public final Lehg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehg;->a:Loiw;

    iput-object p2, p0, Lehg;->b:Loiw;

    iput-object p3, p0, Lehg;->c:Loiw;

    iput-object p4, p0, Lehg;->d:Loiw;

    iput-object p5, p0, Lehg;->e:Loiw;

    iput-object p6, p0, Lehg;->f:Loiw;

    iput-object p7, p0, Lehg;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lehf;
    .locals 9

    iget-object v0, p0, Lehg;->a:Loiw;

    check-cast v0, Lcrj;

    invoke-virtual {v0}, Lcrj;->a()Lmqp;

    move-result-object v2

    iget-object v0, p0, Lehg;->b:Loiw;

    check-cast v0, Lfwo;

    invoke-virtual {v0}, Lfwo;->a()Lfuz;

    move-result-object v3

    iget-object v0, p0, Lehg;->c:Loiw;

    check-cast v0, Leha;

    invoke-virtual {v0}, Leha;->a()Legz;

    move-result-object v4

    iget-object v0, p0, Lehg;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldhi;

    iget-object v0, p0, Lehg;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lehg;->f:Loiw;

    check-cast v0, Leep;

    invoke-virtual {v0}, Leep;->a()Leeo;

    move-result-object v7

    iget-object v0, p0, Lehg;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldzf;

    new-instance v0, Lehf;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lehf;-><init>(Lmqp;Lfuz;Legz;Ldhi;ZLeeo;Ldzf;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lehg;->a()Lehf;

    move-result-object v0

    return-object v0
.end method
