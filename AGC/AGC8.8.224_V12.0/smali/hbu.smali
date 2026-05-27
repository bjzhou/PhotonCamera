.class public final Lhbu;
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

    iput-object p1, p0, Lhbu;->a:Loiw;

    iput-object p2, p0, Lhbu;->b:Loiw;

    iput-object p3, p0, Lhbu;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhdt;
    .locals 3

    iget-object v0, p0, Lhbu;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lhbu;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuh;

    iget-object v2, p0, Lhbu;->c:Loiw;

    check-cast v2, Lerc;

    invoke-virtual {v2}, Lerc;->a()Lfak;

    move-result-object v2

    check-cast v0, Lhcq;

    invoke-static {v1, v2, v0}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhbu;->a()Lhdt;

    move-result-object v0

    return-object v0
.end method
