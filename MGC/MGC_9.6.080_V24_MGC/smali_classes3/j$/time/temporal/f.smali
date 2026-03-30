.class abstract enum Lj$/time/temporal/f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;


# static fields
.field public static final enum DAY_OF_QUARTER:Lj$/time/temporal/f;

.field public static final enum QUARTER_OF_YEAR:Lj$/time/temporal/f;

.field public static final enum WEEK_BASED_YEAR:Lj$/time/temporal/f;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/f;

.field private static final a:[I

.field private static final synthetic b:[Lj$/time/temporal/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lj$/time/temporal/b;

    invoke-direct {v1}, Lj$/time/temporal/b;-><init>()V

    sput-object v1, Lj$/time/temporal/f;->DAY_OF_QUARTER:Lj$/time/temporal/f;

    new-instance v2, Lj$/time/temporal/c;

    invoke-direct {v2}, Lj$/time/temporal/c;-><init>()V

    sput-object v2, Lj$/time/temporal/f;->QUARTER_OF_YEAR:Lj$/time/temporal/f;

    new-instance v3, Lj$/time/temporal/d;

    invoke-direct {v3}, Lj$/time/temporal/d;-><init>()V

    sput-object v3, Lj$/time/temporal/f;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/f;

    new-instance v4, Lj$/time/temporal/e;

    invoke-direct {v4}, Lj$/time/temporal/e;-><init>()V

    sput-object v4, Lj$/time/temporal/f;->WEEK_BASED_YEAR:Lj$/time/temporal/f;

    const/4 v5, 0x4

    new-array v5, v5, [Lj$/time/temporal/f;

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    sput-object v5, Lj$/time/temporal/f;->b:[Lj$/time/temporal/f;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/temporal/f;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method static bridge synthetic F()[I
    .locals 1

    sget-object v0, Lj$/time/temporal/f;->a:[I

    return-object v0
.end method

.method static V(Lj$/time/h;)I
    .locals 5

    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/h;->b0()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x3

    const/4 v4, -0x3

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v0, 0x4

    :cond_0
    if-ge v1, v3, :cond_1

    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lj$/time/h;->t0(I)Lj$/time/h;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lj$/time/h;->p0(J)Lj$/time/h;

    move-result-object p0

    invoke-static {p0}, Lj$/time/temporal/f;->Z(Lj$/time/h;)I

    move-result p0

    invoke-static {p0}, Lj$/time/temporal/f;->a0(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/temporal/r;->d()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v0, 0x35

    if-ne v1, v0, :cond_2

    if-eq v3, v4, :cond_2

    const/4 v0, -0x2

    if-ne v3, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move p0, v2

    :goto_0
    return p0
.end method

.method static bridge synthetic W(Lj$/time/h;)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/f;->Z(Lj$/time/h;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic X(I)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/f;->a0(I)I

    move-result p0

    return p0
.end method

.method static Y(Lj$/time/h;)Lj$/time/temporal/r;
    .locals 4

    invoke-static {p0}, Lj$/time/temporal/f;->Z(Lj$/time/h;)I

    move-result p0

    invoke-static {p0}, Lj$/time/temporal/f;->a0(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p0

    return-object p0
.end method

.method private static Z(Lj$/time/h;)I
    .locals 4

    invoke-virtual {p0}, Lj$/time/h;->e0()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/h;->b0()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static a0(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object v0

    sget-object v1, Lj$/time/c;->THURSDAY:Lj$/time/c;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object v0

    sget-object v1, Lj$/time/c;->WEDNESDAY:Lj$/time/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x35

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/f;
    .locals 1

    const-class v0, Lj$/time/temporal/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/f;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/f;
    .locals 1

    sget-object v0, Lj$/time/temporal/f;->b:[Lj$/time/temporal/f;

    invoke-virtual {v0}, [Lj$/time/temporal/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/f;

    return-object v0
.end method


# virtual methods
.method public final C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
