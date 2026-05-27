.class public final Lcst;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcst;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldiu;
    .locals 1

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iget-object v0, p0, Lcst;->a:Loiw;

    check-cast v0, Lcss;

    invoke-virtual {v0}, Lcss;->a()Ljava/util/List;

    new-instance v0, Ldiu;

    invoke-direct {v0}, Ldiu;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcst;->a()Ldiu;

    move-result-object v0

    return-object v0
.end method
