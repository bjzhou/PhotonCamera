.class public final Lbdt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbdt;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbdt;

    invoke-direct {v0}, Lbdt;-><init>()V

    sput-object v0, Lbdt;->a:Lbdt;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbdt;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
