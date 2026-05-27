.class public final Limn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const-string v3, "Unrecognized version name is found: "

    if-lt v1, v2, :cond_1

    new-array v1, v1, [I

    iput-object v1, p0, Limn;->a:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Limn;->a:[I

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(Limn;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Limn;->a:[I

    array-length v3, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v1, v3, :cond_2

    iget-object v6, p1, Limn;->a:[I

    array-length v7, v6

    if-ge v1, v7, :cond_2

    aget v2, v2, v1

    aget v3, v6, v1

    if-le v2, v3, :cond_0

    return v5

    :cond_0
    if-ge v2, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Limn;->a:[I

    array-length v1, v1

    if-ge v3, v1, :cond_5

    :goto_1
    iget-object v1, p1, Limn;->a:[I

    array-length v2, v1

    if-ge v3, v2, :cond_8

    aget v1, v1, v3

    if-lez v1, :cond_3

    return v5

    :cond_3
    if-gez v1, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p1, p0, Limn;->a:[I

    array-length v2, p1

    if-ge v1, v2, :cond_8

    aget p1, p1, v1

    if-lez p1, :cond_6

    return v5

    :cond_6
    if-gez p1, :cond_7

    return v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Limn;

    invoke-virtual {p0, p1}, Limn;->a(Limn;)I

    move-result p1

    return p1
.end method
