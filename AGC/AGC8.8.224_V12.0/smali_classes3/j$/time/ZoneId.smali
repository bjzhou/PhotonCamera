.class public abstract Lj$/time/ZoneId;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1c

    new-array v1, v0, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v3, "ACT"

    const-string v4, "Australia/Darwin"

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "AET"

    const-string v5, "Australia/Sydney"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "AGT"

    const-string v5, "America/Argentina/Buenos_Aires"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "ART"

    const-string v5, "Africa/Cairo"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "AST"

    const-string v5, "America/Anchorage"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "BET"

    const-string v5, "America/Sao_Paulo"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "BST"

    const-string v5, "Asia/Dhaka"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "CAT"

    const-string v5, "Africa/Harare"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "CNT"

    const-string v5, "America/St_Johns"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "CST"

    const-string v5, "America/Chicago"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "CTT"

    const-string v5, "Asia/Shanghai"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "EAT"

    const-string v5, "Africa/Addis_Ababa"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0xb

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "ECT"

    const-string v5, "Europe/Paris"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0xc

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "IET"

    const-string v5, "America/Indiana/Indianapolis"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0xd

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "IST"

    const-string v5, "Asia/Kolkata"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0xe

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "JST"

    const-string v5, "Asia/Tokyo"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0xf

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "MIT"

    const-string v5, "Pacific/Apia"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "NET"

    const-string v5, "Asia/Yerevan"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x11

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "NST"

    const-string v5, "Pacific/Auckland"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x12

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "PLT"

    const-string v5, "Asia/Karachi"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x13

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "PNT"

    const-string v5, "America/Phoenix"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x14

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "PRT"

    const-string v5, "America/Puerto_Rico"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x15

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "PST"

    const-string v5, "America/Los_Angeles"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x16

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "SST"

    const-string v5, "Pacific/Guadalcanal"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x17

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "VST"

    const-string v5, "Asia/Ho_Chi_Minh"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x18

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "EST"

    const-string v5, "-05:00"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x19

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "MST"

    const-string v5, "-07:00"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v4, "HST"

    const-string v5, "-10:00"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneId;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/time/p;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/time/q;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid subclass"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;
    .locals 4

    invoke-static {}, Lj$/time/temporal/n;->f()Lj$/time/temporal/o;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain ZoneId from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Ljava/lang/String;Ljava/util/Map;)Lj$/time/ZoneId;
    .locals 3

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Lj$/util/Objects;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    const-string p1, "+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "UTC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "GMT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "UT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lj$/time/q;->y(Ljava/lang/String;)Lj$/time/q;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_0
    const/4 p1, 0x3

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_4

    sget-object p0, Lj$/time/p;->f:Lj$/time/p;

    invoke-static {v0, p0}, Lj$/time/ZoneId;->u(Ljava/lang/String;Lj$/time/p;)Lj$/time/ZoneId;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_5

    invoke-static {p0}, Lj$/time/q;->y(Ljava/lang/String;)Lj$/time/q;

    move-result-object p0

    goto :goto_3

    :cond_5
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj$/time/p;->A(Ljava/lang/String;)Lj$/time/p;

    move-result-object p1

    sget-object v1, Lj$/time/p;->f:Lj$/time/p;

    invoke-static {v0, p1}, Lj$/time/ZoneId;->u(Ljava/lang/String;Lj$/time/p;)Lj$/time/ZoneId;

    move-result-object p0
    :try_end_0
    .catch Lj$/time/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Lj$/time/b;

    const-string v1, "Invalid ID for offset-based ZoneId: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lj$/time/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_6
    :goto_2
    invoke-static {p0}, Lj$/time/p;->A(Ljava/lang/String;)Lj$/time/p;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "aliasMap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "zoneId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static systemDefault()Lj$/time/ZoneId;
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lj$/time/ZoneId;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lj$/time/ZoneId;->s(Ljava/lang/String;Ljava/util/Map;)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static u(Ljava/lang/String;Lj$/time/p;)Lj$/time/ZoneId;
    .locals 1

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefix should be GMT, UTC or UT, is: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lj$/time/p;->z()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lj$/time/p;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance v0, Lj$/time/q;

    invoke-static {p1}, Lj$/time/zone/c;->j(Lj$/time/p;)Lj$/time/zone/c;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lj$/time/q;-><init>(Ljava/lang/String;Lj$/time/zone/c;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "offset"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "prefix"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lj$/time/ZoneId;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/ZoneId;

    invoke-virtual {p0}, Lj$/time/ZoneId;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/ZoneId;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lj$/time/ZoneId;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Lj$/time/zone/c;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lj$/time/ZoneId;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
