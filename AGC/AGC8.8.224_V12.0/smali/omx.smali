.class final Lomx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lomx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lomx;

    invoke-direct {v0}, Lomx;-><init>()V

    sput-object v0, Lomx;->a:Lomx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lomx;->a:Lomx;

    return-object v0
.end method
