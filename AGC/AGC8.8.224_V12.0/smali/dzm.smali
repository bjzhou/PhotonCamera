.class public final Ldzm;
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

    iput-object p1, p0, Ldzm;->a:Loiw;

    iput-object p2, p0, Ldzm;->b:Loiw;

    iput-object p3, p0, Ldzm;->c:Loiw;

    iput-object p4, p0, Ldzm;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldzl;
    .locals 7

    iget-object v0, p0, Ldzm;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ldym;

    iget-object v0, p0, Ldzm;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkbc;

    invoke-static {}, Lduq;->b()Ldzn;

    move-result-object v4

    invoke-static {}, Lduq;->c()Ldzn;

    move-result-object v5

    new-instance v0, Ldzl;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldzl;-><init>(Ldym;Lkbc;Ldzn;Ldzn;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldzm;->a()Ldzl;

    move-result-object v0

    return-object v0
.end method
