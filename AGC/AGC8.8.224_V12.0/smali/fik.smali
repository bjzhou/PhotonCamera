.class public final Lfik;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfik;->a:Loiw;

    iput-object p2, p0, Lfik;->b:Loiw;

    iput-object p3, p0, Lfik;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Lfik;
    .locals 1

    new-instance v0, Lfik;

    invoke-direct {v0, p0, p1, p2}, Lfik;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfij;
    .locals 4

    iget-object v0, p0, Lfik;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknz;

    iget-object v1, p0, Lfik;->b:Loiw;

    check-cast v1, Lfwp;

    invoke-virtual {v1}, Lfwp;->a()Lkli;

    move-result-object v1

    iget-object v2, p0, Lfik;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgvb;

    new-instance v3, Lfij;

    invoke-direct {v3, v0, v1, v2}, Lfij;-><init>(Lknz;Lkli;Lgvb;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfik;->a()Lfij;

    move-result-object v0

    return-object v0
.end method
