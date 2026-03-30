.class Lj$/time/format/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# instance fields
.field private final a:Lj$/time/temporal/p;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lj$/time/temporal/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    iput-object p2, p0, Lj$/time/format/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public k(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 1

    iget-object v0, p0, Lj$/time/format/r;->a:Lj$/time/temporal/p;

    invoke-virtual {p1, v0}, Lj$/time/format/v;->f(Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneId;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/format/r;->b:Ljava/lang/String;

    return-object v0
.end method
