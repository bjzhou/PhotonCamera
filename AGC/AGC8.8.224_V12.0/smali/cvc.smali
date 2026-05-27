.class public final Lcvc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvc;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljzd;
    .locals 3

    invoke-static {}, Lims;->b()Ljza;

    move-result-object v0

    iget-object v1, p0, Lcvc;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhkc;

    new-instance v2, Lcvd;

    invoke-interface {v1}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhkn;

    invoke-direct {v2, v0, v1}, Lcvd;-><init>(Ljzd;Lhkn;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcvc;->a()Ljzd;

    move-result-object v0

    return-object v0
.end method
