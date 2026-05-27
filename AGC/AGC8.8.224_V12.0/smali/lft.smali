.class public final Llft;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llft;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llfw;
    .locals 2

    iget-object v0, p0, Llft;->a:Loiw;

    check-cast v0, Llfs;

    invoke-virtual {v0}, Llfs;->a()Llfx;

    move-result-object v0

    new-instance v1, Llfw;

    invoke-direct {v1, v0}, Llfw;-><init>(Llfx;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llft;->a()Llfw;

    move-result-object v0

    return-object v0
.end method
