.class public final enum Lj$/time/format/C;
.super Ljava/lang/Enum;


# static fields
.field public static final enum FULL:Lj$/time/format/C;

.field public static final enum FULL_STANDALONE:Lj$/time/format/C;

.field public static final enum NARROW:Lj$/time/format/C;

.field public static final enum NARROW_STANDALONE:Lj$/time/format/C;

.field public static final enum SHORT:Lj$/time/format/C;

.field public static final enum SHORT_STANDALONE:Lj$/time/format/C;

.field private static final synthetic b:[Lj$/time/format/C;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lj$/time/format/C;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lj$/time/format/C;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj$/time/format/C;->FULL:Lj$/time/format/C;

    new-instance v1, Lj$/time/format/C;

    const-string v3, "FULL_STANDALONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lj$/time/format/C;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lj$/time/format/C;->FULL_STANDALONE:Lj$/time/format/C;

    new-instance v3, Lj$/time/format/C;

    const-string v5, "SHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lj$/time/format/C;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lj$/time/format/C;->SHORT:Lj$/time/format/C;

    new-instance v5, Lj$/time/format/C;

    const-string v7, "SHORT_STANDALONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lj$/time/format/C;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lj$/time/format/C;->SHORT_STANDALONE:Lj$/time/format/C;

    new-instance v7, Lj$/time/format/C;

    const-string v9, "NARROW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lj$/time/format/C;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lj$/time/format/C;->NARROW:Lj$/time/format/C;

    new-instance v9, Lj$/time/format/C;

    const-string v11, "NARROW_STANDALONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lj$/time/format/C;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lj$/time/format/C;->NARROW_STANDALONE:Lj$/time/format/C;

    const/4 v11, 0x6

    new-array v11, v11, [Lj$/time/format/C;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lj$/time/format/C;->b:[Lj$/time/format/C;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lj$/time/format/C;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/C;
    .locals 1

    const-class v0, Lj$/time/format/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/format/C;

    return-object p0
.end method

.method public static values()[Lj$/time/format/C;
    .locals 1

    sget-object v0, Lj$/time/format/C;->b:[Lj$/time/format/C;

    invoke-virtual {v0}, [Lj$/time/format/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/C;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lj$/time/format/C;->a:I

    return v0
.end method
