.class public final Ljuy;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljuy;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkgd;
    .locals 2

    iget-object v0, p0, Ljuy;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuh;

    new-instance v1, Lkgd;

    invoke-direct {v1, v0}, Lkgd;-><init>(Ljuh;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljuy;->a()Lkgd;

    move-result-object v0

    return-object v0
.end method
