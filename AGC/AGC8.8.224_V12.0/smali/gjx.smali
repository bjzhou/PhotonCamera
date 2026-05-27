.class public final Lgjx;
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

    iput-object p1, p0, Lgjx;->a:Loiw;

    iput-object p2, p0, Lgjx;->b:Loiw;

    iput-object p3, p0, Lgjx;->c:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Lgjx;
    .locals 1

    new-instance v0, Lgjx;

    invoke-direct {v0, p0, p1, p2}, Lgjx;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lva;
    .locals 4

    iget-object v0, p0, Lgjx;->a:Loiw;

    iget-object v1, p0, Lgjx;->b:Loiw;

    iget-object v2, p0, Lgjx;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    new-instance v3, Lva;

    invoke-direct {v3, v0, v1, v2}, Lva;-><init>(Loiw;Loiw;Lmqp;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgjx;->b()Lva;

    move-result-object v0

    return-object v0
.end method
