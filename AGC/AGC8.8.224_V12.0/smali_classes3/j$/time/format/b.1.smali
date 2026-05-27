.class final Lj$/time/format/b;
.super Lj$/time/format/y;


# instance fields
.field final synthetic e:Lj$/time/format/x;


# direct methods
.method constructor <init>(Lj$/time/format/x;)V
    .locals 0

    iput-object p1, p0, Lj$/time/format/b;->e:Lj$/time/format/x;

    invoke-direct {p0}, Lj$/time/format/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lj$/time/chrono/g;Lj$/time/temporal/l;JLj$/time/format/C;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lj$/time/format/b;->e:Lj$/time/format/x;

    invoke-virtual {p1, p3, p4, p5}, Lj$/time/format/x;->a(JLj$/time/format/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lj$/time/temporal/l;JLj$/time/format/C;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lj$/time/format/b;->e:Lj$/time/format/x;

    invoke-virtual {p1, p2, p3, p4}, Lj$/time/format/x;->a(JLj$/time/format/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
