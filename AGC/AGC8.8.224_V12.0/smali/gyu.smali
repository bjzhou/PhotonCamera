.class public final enum Lgyu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyu;

.field public static final enum b:Lgyu;

.field public static final enum c:Lgyu;

.field public static final enum d:Lgyu;

.field public static final e:Lgyu;

.field public static final f:[I

.field private static final synthetic h:[Lgyu;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lgyu;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgyu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgyu;->a:Lgyu;

    new-instance v1, Lgyu;

    const-string v3, "THREE"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v3, v4, v5}, Lgyu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgyu;->b:Lgyu;

    new-instance v3, Lgyu;

    const-string v6, "TEN"

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-direct {v3, v6, v7, v8}, Lgyu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgyu;->c:Lgyu;

    new-instance v6, Lgyu;

    const-string v8, "AUTO"

    const/4 v9, -0x1

    invoke-direct {v6, v8, v5, v9}, Lgyu;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lgyu;->d:Lgyu;

    const/4 v8, 0x4

    new-array v8, v8, [Lgyu;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v7

    aput-object v6, v8, v5

    sput-object v8, Lgyu;->h:[Lgyu;

    sput-object v0, Lgyu;->e:Lgyu;

    invoke-static {}, Lgyu;->values()[Lgyu;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgyu;->f:[I

    invoke-static {}, Lgyu;->values()[Lgyu;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lgyu;->f:[I

    iget v4, v4, Lgyu;->g:I

    aput v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgyu;->g:I

    return-void
.end method

.method public static a(I)Lgyu;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    sget-object p0, Lgyu;->e:Lgyu;

    return-object p0

    :sswitch_0
    sget-object p0, Lgyu;->c:Lgyu;

    return-object p0

    :sswitch_1
    sget-object p0, Lgyu;->b:Lgyu;

    return-object p0

    :sswitch_2
    sget-object p0, Lgyu;->a:Lgyu;

    return-object p0

    :sswitch_3
    sget-object p0, Lgyu;->d:Lgyu;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static values()[Lgyu;
    .locals 1

    sget-object v0, Lgyu;->h:[Lgyu;

    invoke-virtual {v0}, [Lgyu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyu;

    return-object v0
.end method
