.class public final Lmny;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static final a(Lnnn;)Lnnn;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lmoc;->b()Lmnt;

    move-result-object v0

    new-instance v1, Lnnz;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lnnz;-><init>(Lmnt;Lnnn;I)V

    return-object v1
.end method

.method public static final b(Lnno;)Lnno;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lmoc;->b()Lmnt;

    move-result-object v0

    new-instance v1, Lmnw;

    invoke-direct {v1, v0, p0}, Lmnw;-><init>(Lmnt;Lnno;)V

    return-object v1
.end method
