.class final enum Lcom/agc/util/Color;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/util/Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/util/Color;

.field public static final enum BLACK:Lcom/agc/util/Color;

.field public static final enum BLACK_PAPER_SECOND:Lcom/agc/util/Color;

.field public static final enum LUNAR_PAPER_ONE:Lcom/agc/util/Color;

.field public static final enum LUNAR_PAPER_SECOND:Lcom/agc/util/Color;

.field public static final enum LUNAR_PAPER_THIRD:Lcom/agc/util/Color;

.field public static final enum WHITE:Lcom/agc/util/Color;

.field public static final enum WHITE_PAPER_ONE:Lcom/agc/util/Color;

.field public static final enum WHITE_PAPER_SECOND:Lcom/agc/util/Color;


# direct methods
.method private static synthetic $values()[Lcom/agc/util/Color;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/agc/util/Color;

    sget-object v1, Lcom/agc/util/Color;->WHITE:Lcom/agc/util/Color;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->BLACK:Lcom/agc/util/Color;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->WHITE_PAPER_ONE:Lcom/agc/util/Color;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->WHITE_PAPER_SECOND:Lcom/agc/util/Color;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->BLACK_PAPER_SECOND:Lcom/agc/util/Color;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->LUNAR_PAPER_ONE:Lcom/agc/util/Color;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->LUNAR_PAPER_SECOND:Lcom/agc/util/Color;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/util/Color;->LUNAR_PAPER_THIRD:Lcom/agc/util/Color;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->WHITE:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "BLACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->BLACK:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "WHITE_PAPER_ONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->WHITE_PAPER_ONE:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "WHITE_PAPER_SECOND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->WHITE_PAPER_SECOND:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "BLACK_PAPER_SECOND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->BLACK_PAPER_SECOND:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "LUNAR_PAPER_ONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->LUNAR_PAPER_ONE:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "LUNAR_PAPER_SECOND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->LUNAR_PAPER_SECOND:Lcom/agc/util/Color;

    new-instance v0, Lcom/agc/util/Color;

    const-string v1, "LUNAR_PAPER_THIRD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/agc/util/Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/util/Color;->LUNAR_PAPER_THIRD:Lcom/agc/util/Color;

    invoke-static {}, Lcom/agc/util/Color;->$values()[Lcom/agc/util/Color;

    move-result-object v0

    sput-object v0, Lcom/agc/util/Color;->$VALUES:[Lcom/agc/util/Color;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/util/Color;
    .locals 1

    const-class v0, Lcom/agc/util/Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/util/Color;

    return-object p0
.end method

.method public static values()[Lcom/agc/util/Color;
    .locals 1

    sget-object v0, Lcom/agc/util/Color;->$VALUES:[Lcom/agc/util/Color;

    invoke-virtual {v0}, [Lcom/agc/util/Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/util/Color;

    return-object v0
.end method
