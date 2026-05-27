.class public final Llfs;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfs;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llfx;
    .locals 2

    iget-object v0, p0, Llfs;->a:Loiw;

    sget v1, Llfw;->b:I

    check-cast v0, Llfz;

    invoke-virtual {v0}, Llfz;->a()Llfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llfs;->a()Llfx;

    move-result-object v0

    return-object v0
.end method
