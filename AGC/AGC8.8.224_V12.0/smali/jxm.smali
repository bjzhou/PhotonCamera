.class public final Ljxm;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxm;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljxn;
    .locals 2

    iget-object v0, p0, Ljxm;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljyx;

    new-instance v0, Ljxn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljxn;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljxm;->a()Ljxn;

    move-result-object v0

    return-object v0
.end method
