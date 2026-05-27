.class final Lnys;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnyq;

    invoke-direct {v0}, Lnyq;-><init>()V

    sput-object v0, Lnys;->a:Ljava/util/Iterator;

    new-instance v0, Lnyr;

    invoke-direct {v0}, Lnyr;-><init>()V

    sput-object v0, Lnys;->b:Ljava/lang/Iterable;

    return-void
.end method
