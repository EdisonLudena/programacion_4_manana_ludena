import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/metrica_servidor.dart';

class MetricasNotifier extends AsyncNotifier<List<MetricaServidor>> {
  @override
  Future<List<MetricaServidor>> build() => _fetch();

  Future<List<MetricaServidor>> _fetch() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return const [
      MetricaServidor(servidor:'Lionel Messi', cpu:45.2, ram:62.1, conexiones:230, ssd:123),
      MetricaServidor(servidor:'Cristiano Ronaldo',  cpu:88.1, ram:91.2, conexiones:80, ssd: 245),
      MetricaServidor(servidor:'Neymar Jr', cpu:22.4, ram:41.0, conexiones:50, ssd: 546),
      MetricaServidor(servidor:'Kylian Mbappé', cpu:22.4, ram:41.0, conexiones:50, ssd: 546),
      MetricaServidor(servidor:'Erling Haaland', cpu:22.4, ram:41.0, conexiones:50, ssd: 546),
    ];
  }

  Future<void> recargar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }
}

final metricasProvider =
    AsyncNotifierProvider<MetricasNotifier, List<MetricaServidor>>(
  MetricasNotifier.new,
);