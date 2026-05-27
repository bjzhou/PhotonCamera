.class public final Liyk;
.super Liyn;


# static fields
.field public static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Liyk;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Liyz;)V
    .locals 0

    invoke-direct {p0, p1}, Liyn;-><init>(Liyz;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-void
.end method
