.class public final Lcwr;
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

    iput-object p1, p0, Lcwr;->a:Loiw;

    iput-object p2, p0, Lcwr;->b:Loiw;

    iput-object p3, p0, Lcwr;->c:Loiw;

    iput-object p4, p0, Lcwr;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcwq;
    .locals 10

    iget-object v0, p0, Lcwr;->a:Loiw;

    check-cast v0, Lcwf;

    invoke-virtual {v0}, Lcwf;->b()Ldja;

    move-result-object v2

    iget-object v0, p0, Lcwr;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfbk;

    iget-object v0, p0, Lcwr;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljew;

    iget-object v0, p0, Lcwr;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcvm;

    new-instance v0, Lcwq;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcwq;-><init>(Ldja;Lfbk;Ljew;Lcvm;[B[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcwr;->a()Lcwq;

    move-result-object v0

    return-object v0
.end method
