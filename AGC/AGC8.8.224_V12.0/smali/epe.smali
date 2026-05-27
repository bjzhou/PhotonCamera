.class public final Lepe;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepe;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcvr;
    .locals 3

    iget-object v0, p0, Lepe;->a:Loiw;

    new-instance v1, Lcvr;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcvr;-><init>(Loiw;[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lepe;->a()Lcvr;

    move-result-object v0

    return-object v0
.end method
