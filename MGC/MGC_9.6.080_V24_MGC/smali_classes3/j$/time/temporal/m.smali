.class public final synthetic Lj$/time/temporal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lj$/time/temporal/m;->a:I

    iput p1, p0, Lj$/time/temporal/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    iget v0, p0, Lj$/time/temporal/m;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v0

    iget v1, p0, Lj$/time/temporal/m;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    rsub-int/lit8 v0, v1, 0x7

    :goto_0
    int-to-long v0, v0

    goto :goto_1

    :cond_1
    neg-int v0, v1

    goto :goto_0

    :goto_1
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->k(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_0
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v0

    iget v1, p0, Lj$/time/temporal/m;->b:I

    if-ne v0, v1, :cond_2

    goto :goto_5

    :cond_2
    sub-int/2addr v0, v1

    if-ltz v0, :cond_3

    rsub-int/lit8 v0, v0, 0x7

    :goto_3
    int-to-long v0, v0

    goto :goto_4

    :cond_3
    neg-int v0, v0

    goto :goto_3

    :goto_4
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
