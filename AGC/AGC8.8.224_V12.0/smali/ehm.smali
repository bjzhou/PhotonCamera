.class public final Lehm;
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

    iput-object p1, p0, Lehm;->a:Loiw;

    iput-object p2, p0, Lehm;->b:Loiw;

    iput-object p3, p0, Lehm;->c:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Lehm;
    .locals 1

    new-instance v0, Lehm;

    invoke-direct {v0, p0, p1, p2}, Lehm;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lva;
    .locals 4

    iget-object v0, p0, Lehm;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnsb;

    iget-object v1, p0, Lehm;->b:Loiw;

    check-cast v1, Lceb;

    invoke-virtual {v1}, Lceb;->a()Lcea;

    move-result-object v1

    iget-object v2, p0, Lehm;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkbc;

    new-instance v3, Lva;

    invoke-direct {v3, v0, v1, v2}, Lva;-><init>(Lnsb;Lcea;Lkbc;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lehm;->b()Lva;

    move-result-object v0

    return-object v0
.end method
