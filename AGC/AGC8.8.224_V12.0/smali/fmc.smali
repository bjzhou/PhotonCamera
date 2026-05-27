.class public final Lfmc;
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

    iput-object p1, p0, Lfmc;->a:Loiw;

    iput-object p2, p0, Lfmc;->b:Loiw;

    iput-object p3, p0, Lfmc;->c:Loiw;

    iput-object p4, p0, Lfmc;->d:Loiw;

    iput-object p5, p0, Lfmc;->e:Loiw;

    iput-object p6, p0, Lfmc;->f:Loiw;

    iput-object p7, p0, Lfmc;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhdk;
    .locals 12

    iget-object v0, p0, Lfmc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljew;

    iget-object v0, p0, Lfmc;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcdx;

    iget-object v0, p0, Lfmc;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhlw;

    iget-object v0, p0, Lfmc;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lhlu;

    iget-object v6, p0, Lfmc;->e:Loiw;

    iget-object v0, p0, Lfmc;->f:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v7

    iget-object v0, p0, Lfmc;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljuh;

    new-instance v0, Lhdk;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lhdk;-><init>(Ljew;Lcdx;Lhlw;Lhlu;Loiw;Logd;Ljuh;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfmc;->a()Lhdk;

    move-result-object v0

    return-object v0
.end method
