.class public final Loxn;
.super Loxo;


# static fields
.field public static final c:Loxn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loxn;

    invoke-direct {v0}, Loxn;-><init>()V

    sput-object v0, Loxn;->c:Loxn;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    sget v0, Loxs;->b:I

    sget v1, Loxs;->c:I

    sget-wide v2, Loxs;->d:J

    invoke-direct {p0, v0, v1, v2, v3}, Loxo;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
