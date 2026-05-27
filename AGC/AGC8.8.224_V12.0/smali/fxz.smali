.class public final Lfxz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxz;->a:Loiw;

    iput-object p2, p0, Lfxz;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Lfxz;
    .locals 1

    new-instance v0, Lfxz;

    invoke-direct {v0, p0, p1}, Lfxz;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfxy;
    .locals 3

    iget-object v0, p0, Lfxz;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    new-instance v1, Lfyb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v2}, Lfyb;-><init>(Lva;[B[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfxz;->a()Lfxy;

    move-result-object v0

    return-object v0
.end method
