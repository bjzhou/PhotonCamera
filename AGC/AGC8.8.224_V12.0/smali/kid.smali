.class public final Lkid;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkid;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lloi;
    .locals 2

    iget-object v0, p0, Lkid;->a:Loiw;

    check-cast v0, Lknp;

    invoke-virtual {v0}, Lknp;->a()Lknq;

    move-result-object v0

    new-instance v1, Lloi;

    invoke-direct {v1, v0}, Lloi;-><init>(Lknq;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkid;->a()Lloi;

    move-result-object v0

    return-object v0
.end method
