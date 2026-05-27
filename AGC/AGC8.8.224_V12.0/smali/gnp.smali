.class public final Lgnp;
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

    iput-object p1, p0, Lgnp;->a:Loiw;

    iput-object p2, p0, Lgnp;->b:Loiw;

    iput-object p3, p0, Lgnp;->c:Loiw;

    iput-object p4, p0, Lgnp;->d:Loiw;

    iput-object p5, p0, Lgnp;->e:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;)Lgnp;
    .locals 7

    new-instance v6, Lgnp;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgnp;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v6
.end method


# virtual methods
.method public final a()Lgno;
    .locals 12

    iget-object v0, p0, Lgnp;->a:Loiw;

    check-cast v0, Lgnn;

    invoke-virtual {v0}, Lgnn;->b()Ldja;

    move-result-object v2

    iget-object v0, p0, Lgnp;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lecd;

    iget-object v0, p0, Lgnp;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgue;

    iget-object v0, p0, Lgnp;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldhi;

    iget-object v0, p0, Lgnp;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljuf;

    new-instance v0, Lgno;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lgno;-><init>(Ldja;Lecd;Lgue;Ldhi;Ljuf;[B[B[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgnp;->a()Lgno;

    move-result-object v0

    return-object v0
.end method
