.class public final Llqf;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Set;ZZ)Llqb;
    .locals 1

    new-instance p0, Llqb;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-instance p2, Llpl;

    sget-object p3, Llqd;->b:Llqd;

    new-instance p5, Llqc;

    const-class p6, Ljava/lang/Double;

    const/4 v0, 0x2

    invoke-direct {p5, p6, v0}, Llqc;-><init>(Ljava/lang/Class;I)V

    const/4 p6, 0x0

    invoke-direct {p2, p6, p4, p3, p5}, Llpl;-><init>(ZLjava/util/Set;Llqe;Llqe;)V

    const-string p3, "com.google.android.libraries.consentverifier"

    const-string p4, "CollectionBasisVerifierFeatures__log_sampling_rate"

    invoke-direct {p0, p3, p4, p1, p2}, Llqb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Llpn;)V

    return-object p0
.end method

.method public static final b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Set;ZZ)Llqb;
    .locals 4

    new-instance p5, Llqb;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Llpl;

    sget-object v0, Llqd;->c:Llqd;

    new-instance v1, Llqc;

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Llqc;-><init>(Ljava/lang/Class;I)V

    invoke-direct {p2, p6, p4, v0, v1}, Llpl;-><init>(ZLjava/util/Set;Llqe;Llqe;)V

    invoke-direct {p5, p3, p0, p1, p2}, Llqb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Llpn;)V

    return-object p5
.end method

.method public static final c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;
    .locals 5

    new-instance p4, Llqb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Llpl;

    sget-object v1, Llqd;->a:Llqd;

    new-instance v2, Llqc;

    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Llqc;-><init>(Ljava/lang/Class;I)V

    invoke-direct {v0, p5, p3, v1, v2}, Llpl;-><init>(ZLjava/util/Set;Llqe;Llqe;)V

    invoke-direct {p4, p2, p0, p1, v0}, Llqb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Llpn;)V

    return-object p4
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;
    .locals 3

    new-instance p3, Llqb;

    new-instance p5, Llpl;

    new-instance p6, Llqc;

    const/4 v0, 0x1

    invoke-direct {p6, p2, v0}, Llqc;-><init>(Llqe;I)V

    new-instance v1, Llqc;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Llqc;-><init>(Llqe;I)V

    invoke-direct {p5, v0, p4, p6, v1}, Llpl;-><init>(ZLjava/util/Set;Llqe;Llqe;)V

    const-string p2, "com.google.android.libraries.performance.primes"

    invoke-direct {p3, p2, p0, p1, p5}, Llqb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Llpn;)V

    return-object p3
.end method
