.class final Lj$/time/format/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# static fields
.field private static final c:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final a:Lj$/time/format/FormatStyle;

.field private final b:Lj$/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/format/j;->c:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/j;->a:Lj$/time/format/FormatStyle;

    iput-object p2, p0, Lj$/time/format/j;->b:Lj$/time/format/FormatStyle;

    return-void
.end method


# virtual methods
.method public final k(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 12

    invoke-virtual {p1}, Lj$/time/format/v;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/i;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/n;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/format/v;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0}, Lj$/time/chrono/n;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/format/FormatStyle;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lj$/time/format/j;->b:Lj$/time/format/FormatStyle;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lj$/time/format/j;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/format/DateTimeFormatter;

    const/4 v6, 0x1

    if-nez v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v3, v4, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    instance-of v4, v3, Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_a

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_4

    :cond_0
    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/16 v9, 0x62

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-nez v5, :cond_3

    if-eqz v8, :cond_9

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v8, 0x20

    const/16 v10, 0x20

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v8, :cond_4

    if-eq v11, v4, :cond_6

    if-eq v11, v9, :cond_6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_5

    if-eq v10, v4, :cond_6

    if-ne v10, v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v10, v11

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-ltz v3, :cond_8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_9
    :goto_4
    new-instance v4, Lj$/time/format/t;

    invoke-direct {v4}, Lj$/time/format/t;-><init>()V

    invoke-virtual {v4, v3}, Lj$/time/format/t;->k(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lj$/time/format/t;->z(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/DateTimeFormatter;

    if-eqz v0, :cond_b

    move-object v4, v0

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Can\'t determine pattern from "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    invoke-virtual {v4}, Lj$/time/format/DateTimeFormatter;->e()Lj$/time/format/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/format/e;->k(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z

    return v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/format/FormatStyle;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj$/time/format/j;->b:Lj$/time/format/FormatStyle;

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Localized("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
