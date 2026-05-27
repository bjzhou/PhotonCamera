.class final Lj$/time/temporal/m;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/time/temporal/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj$/time/temporal/m;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/g;->J(J)Lj$/time/g;

    move-result-object v1

    :cond_0
    return-object v1

    :pswitch_1
    invoke-virtual {p0, p1}, Lj$/time/temporal/m;->b(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/l;)I

    move-result p1

    invoke-static {p1}, Lj$/time/p;->C(I)Lj$/time/p;

    move-result-object v1

    :cond_1
    return-object v1

    :pswitch_3
    sget-object v0, Lj$/time/temporal/n;->c:Lj$/time/temporal/o;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/temporal/TemporalUnit;

    return-object p1

    :pswitch_4
    sget-object v0, Lj$/time/temporal/n;->b:Lj$/time/temporal/o;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/g;

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1}, Lj$/time/temporal/m;->b(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;

    move-result-object p1

    return-object p1

    :goto_0
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/k;->C(J)Lj$/time/k;

    move-result-object v1

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;
    .locals 2

    sget-object v0, Lj$/time/temporal/n;->a:Lj$/time/temporal/o;

    iget v1, p0, Lj$/time/temporal/m;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    return-object p1

    :goto_0
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lj$/time/temporal/n;->d:Lj$/time/temporal/o;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lj$/time/ZoneId;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lj$/time/temporal/m;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "LocalTime"

    return-object v0

    :pswitch_0
    const-string v0, "LocalDate"

    return-object v0

    :pswitch_1
    const-string v0, "Zone"

    return-object v0

    :pswitch_2
    const-string v0, "ZoneOffset"

    return-object v0

    :pswitch_3
    const-string v0, "Precision"

    return-object v0

    :pswitch_4
    const-string v0, "Chronology"

    return-object v0

    :pswitch_5
    const-string v0, "ZoneId"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
