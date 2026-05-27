.class public final enum Lnmh;
.super Ljava/lang/Enum;

# interfaces
.implements Lnmi;


# static fields
.field public static final enum a:Lnmh;

.field private static final synthetic b:[Lnmh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnmh;

    invoke-direct {v0}, Lnmh;-><init>()V

    sput-object v0, Lnmh;->a:Lnmh;

    const/4 v1, 0x1

    new-array v1, v1, [Lnmh;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lnmh;->b:[Lnmh;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lnmh;
    .locals 1

    sget-object v0, Lnmh;->b:[Lnmh;

    invoke-virtual {v0}, [Lnmh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnmh;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeSource.system()"

    return-object v0
.end method
